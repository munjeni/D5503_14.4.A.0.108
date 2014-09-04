.class Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$2;
.super Ljava/lang/Object;
.source "YesNoCancelDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;

.field final synthetic val$no:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$2;->val$no:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$2;->val$no:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    return-void
.end method
