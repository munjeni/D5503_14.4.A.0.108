.class Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;
.super Ljava/lang/Object;
.source "EasyClickDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mWhichToClick:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mGroup:[Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->mWhichToClick:I
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 81
    :cond_0
    return-void
.end method
