.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [J

    move-object v1, v2

    check-cast v1, [J

    .line 101
    .local v1, "size":[J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V

    goto :goto_0

    .line 105
    .end local v1    # "size":[J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 106
    .local v0, "details":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
