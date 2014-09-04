.class public Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "YesNoCancelDialogBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "yes"    # Ljava/lang/Runnable;
    .param p3, "no"    # Ljava/lang/Runnable;
    .param p4, "messageId"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    const v0, 0x7f07004a

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$3;

    invoke-direct {v1, p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$3;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004b

    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$2;

    invoke-direct {v2, p0, p3}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008f

    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 42
    return-void
.end method
