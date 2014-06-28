.class final Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;
.super Landroid/os/Handler;
.source "LocationEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateLocationViewHandler"
.end annotation


# static fields
.field public static final MESSAGE_TYPE_UPDATE_LOCATION_VIEW:I = 0x1

.field public static final MESSAGE_TYPE_UPDATE_LOCATION_VIEW_BY_CACHED_ADDRESS:I = 0x2

.field public static final MESSAGE_TYPE_UPDATE_LOCATION_VIEW_BY_CACHED_GEOPOINT:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .line 169
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    .line 180
    .local v0, "point":Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const/4 v3, 0x0

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->updateView(Lcom/google/android/maps/GeoPoint;Z)V
    invoke-static {v2, v0, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/google/android/maps/GeoPoint;Z)V

    goto :goto_0

    .line 184
    .end local v0    # "point":Lcom/google/android/maps/GeoPoint;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLastKnownLocation:Landroid/location/Address;
    invoke-static {}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$200()Landroid/location/Address;

    move-result-object v3

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->updateViewByCachedLocation(Landroid/location/Address;)V
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/maps/GeoPoint;

    .line 189
    .local v1, "pt":Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const/4 v3, 0x1

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->updateView(Lcom/google/android/maps/GeoPoint;Z)V
    invoke-static {v2, v1, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/google/android/maps/GeoPoint;Z)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
