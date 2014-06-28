.class Lcom/android/settings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePicker;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 92
    .local v0, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 93
    return-void
.end method
