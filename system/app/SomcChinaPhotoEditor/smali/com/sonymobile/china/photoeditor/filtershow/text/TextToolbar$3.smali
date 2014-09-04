.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$3;
.super Ljava/lang/Object;
.source "TextToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->begin()V
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
    .line 235
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$3;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$3;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createSizeDialog()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    .line 240
    return-void
.end method
