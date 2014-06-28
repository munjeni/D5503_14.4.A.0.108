.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->askForRetry(Lcom/google/android/maps/GeoPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

.field final synthetic val$geoPoint:Lcom/google/android/maps/GeoPoint;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    iput-object p2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->val$geoPoint:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 717
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForRetryDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1800(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 718
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->removeMessages(I)V

    .line 720
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 722
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->val$geoPoint:Lcom/google/android/maps/GeoPoint;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 723
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    return-void
.end method
