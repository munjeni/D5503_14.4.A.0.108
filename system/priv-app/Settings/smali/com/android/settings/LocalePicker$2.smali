.class Lcom/android/settings/LocalePicker$2;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 152
    iput-object p1, p0, Lcom/android/settings/LocalePicker$2;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/LocalePicker$2;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 155
    return-void
.end method
