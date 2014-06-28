.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$9;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$9;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$9;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$3100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$9;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$3100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->cancel(Z)Z

    .line 1007
    :cond_0
    return-void
.end method
