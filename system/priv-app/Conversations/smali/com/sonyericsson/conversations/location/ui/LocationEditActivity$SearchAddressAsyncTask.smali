.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;
.super Landroid/os/AsyncTask;
.source "LocationEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAddressAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 19
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 778
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_0

    const/4 v15, 0x0

    aget-object v15, p1, v15

    if-nez v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    .line 854
    :goto_0
    return-object v15

    .line 780
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v11, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/maps/GeoPoint;>;"
    const/4 v14, 0x0

    .line 783
    .local v14, "listAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x4

    .line 784
    .local v1, "RETRY_COUNT":I
    const/16 v2, 0x1f4

    .line 786
    .local v2, "RETRY_INTERNAL":I
    const/4 v5, -0x1

    .line 788
    .local v5, "focusIdx":I
    new-instance v12, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v15}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v12, v15}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 789
    .local v12, "geocoder":Landroid/location/Geocoder;
    const/4 v13, 0x0

    .line 790
    .local v13, "i":I
    const/4 v13, 0x0

    :goto_1
    const/4 v15, 0x4

    if-ge v13, v15, :cond_5

    .line 791
    const-string v15, "LocationSharing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getFromLocationName retry: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 793
    const/4 v15, 0x0

    goto :goto_0

    .line 796
    :cond_2
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, p1, v15

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_3

    .line 798
    const/4 v15, 0x0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v4

    .line 801
    .local v4, "e":Ljava/io/IOException;
    const-string v15, "LocationSharing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v15, 0x3

    if-ne v13, v15, :cond_3

    .line 803
    const-string v15, "LocationSharing"

    const-string v16, "Geocoder failed many times, so get Address from Http-JSON"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v15, 0x0

    aget-object v15, p1, v15

    const/16 v16, 0xa

    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getAddressFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 809
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_5

    .line 811
    :cond_4
    const-wide/16 v15, 0x1f4

    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 790
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 812
    :catch_1
    move-exception v4

    .line 813
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 822
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_5
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_7

    .line 823
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V
    invoke-static {v15}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    .line 824
    const v15, 0x7f070114

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_0

    .line 828
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    .line 830
    const/4 v13, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_9

    .line 831
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 832
    .local v3, "address":Landroid/location/Address;
    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v15

    const-wide v17, 0x412e848000000000L

    mul-double v6, v15, v17

    .line 833
    .local v6, "geoLatitude":D
    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v15

    const-wide v17, 0x412e848000000000L

    mul-double v8, v15, v17

    .line 834
    .local v8, "geoLongitude":D
    new-instance v10, Lcom/google/android/maps/GeoPoint;

    double-to-int v15, v6

    double-to-int v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 835
    .local v10, "geoPoint":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    if-ne v13, v5, :cond_8

    .line 839
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getName(Landroid/location/Address;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;)Ljava/lang/String;

    move-result-object v16

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationName(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getAddress(Landroid/location/Address;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;)Ljava/lang/String;

    move-result-object v16

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationAddress(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrlPrefixFromAddress(Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v0, v3, v10}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2800(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v16

    # setter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1402(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 847
    .end local v3    # "address":Landroid/location/Address;
    .end local v6    # "geoLatitude":D
    .end local v8    # "geoLongitude":D
    .end local v10    # "geoPoint":Lcom/google/android/maps/GeoPoint;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;
    invoke-static {v15}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/google/android/maps/MapController;

    move-result-object v16

    monitor-enter v16

    .line 848
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const/16 v17, 0x1

    move/from16 v0, v17

    # setter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z
    invoke-static {v15, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1002(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Z)Z

    .line 849
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setMapOverlayInfo(Ljava/util/ArrayList;Ljava/util/List;I)V
    invoke-static {v15, v11, v14, v5}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/util/ArrayList;Ljava/util/List;I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v15}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->adjustZoomOfMap(Lcom/google/android/maps/MapView;Ljava/util/ArrayList;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v15}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->postInvalidate()V

    .line 852
    monitor-exit v16

    .line 854
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 852
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 760
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 859
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    .line 861
    if-eqz p1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 863
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 864
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 760
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const v3, 0x7f07011c

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->stopSyncLocation()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2200(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const-string v1, ""

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const-string v1, ""

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationAddress(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->clearOverlay()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$2500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    .line 773
    return-void
.end method
