.class public interface abstract Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
.super Ljava/lang/Object;
.source "SuperVideoViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;
    }
.end annotation


# virtual methods
.method public abstract getFinderRectFromPreviewSize(Landroid/content/Context;II)Landroid/graphics/Rect;
.end method

.method public abstract getGpsAcquiredListener()Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
.end method

.method public abstract getLayoutOrientationChangedListener()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
.end method

.method public abstract getRequestId(Z)I
.end method

.method public varargs abstract sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
.end method

.method public abstract setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V
.end method

.method public abstract setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V
.end method
