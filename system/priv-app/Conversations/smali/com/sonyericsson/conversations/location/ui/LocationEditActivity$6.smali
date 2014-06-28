.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$6;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initStatusListener()Landroid/location/GpsStatus$Listener;
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
    .line 534
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$6;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 536
    packed-switch p1, :pswitch_data_0

    .line 553
    :goto_0
    return-void

    .line 538
    :pswitch_0
    const-string v0, "LocationSharing"

    const-string v1, "gps first fix!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :pswitch_1
    const-string v0, "LocationSharing"

    const-string v1, "satellite status changes!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :pswitch_2
    const-string v0, "LocationSharing"

    const-string v1, "gps started!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :pswitch_3
    const-string v0, "LocationSharing"

    const-string v1, "gps stopped!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
