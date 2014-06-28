.class public Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
.super Lcom/google/android/maps/MapActivity;
.source "LocationEditActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;
.implements Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;
.implements Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;
.implements Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;,
        Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ZOOM_LEVEL:I = 0x10

.field public static final LOCATION_DETAILS:Ljava/lang/String; = "location"

.field private static final MAX_ADDRESS_SEARCHED:I = 0xa

.field private static final MESSAGE_TYPE_NO_KEY:I = 0x4

.field private static final MESSAGE_TYPE_SET_ADDRESS:I = 0x3

.field private static final MESSAGE_TYPE_SET_NAME:I = 0x2

.field private static final MESSAGE_TYPE_SHOW_TOAST:I = 0x1

.field public static final REQUEST_CODE_OPEN_LOCATION_SETTINGS:I = 0x1

.field public static final START_CURRENT_LOCATION:I = 0x0

.field public static final START_MANUALLY_INSERT_ADDRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocationSharing"

.field public static final TYPE:Ljava/lang/String; = "type"

.field private static final UPDATE_INTERVAL_MS:J = 0x3e8L

.field private static mLastKnownLocation:Landroid/location/Address;


# instance fields
.field private mActionBarArea:Landroid/widget/LinearLayout;

.field private mAskForLocationSettingDialog:Landroid/app/AlertDialog;

.field private mAskForRetryDialog:Landroid/app/AlertDialog;

.field private mBestProvider:Ljava/lang/String;

.field private mButtonPanel:Landroid/widget/LinearLayout;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mCaption:Landroid/widget/TextView;

.field private mContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

.field private mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mEditButton:Landroid/widget/Button;

.field private mEditListener:Landroid/view/View$OnClickListener;

.field private mEditLocationAddress:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLocationFirstFixed:Z

.field private volatile mIsLocationSelected:Z

.field private mIsServiceAvailable:Z

.field private mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

.field private mLink:Ljava/lang/String;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationNameField:Landroid/widget/EditText;

.field private mMapController:Lcom/google/android/maps/MapController;

.field private mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mStartType:I

.field private mStatusListener:Landroid/location/GpsStatus$Listener;

.field private mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

.field private mVirtualKeyBoardShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 110
    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 118
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mVirtualKeyBoardShowing:Z

    .line 128
    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z

    .line 134
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationFirstFixed:Z

    .line 137
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z

    .line 139
    iput v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    .line 198
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    .line 312
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$2;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 415
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mDoneListener:Landroid/view/View$OnClickListener;

    .line 503
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$4;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 510
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$5;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditListener:Landroid/view/View$OnClickListener;

    .line 760
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/google/android/maps/GeoPoint;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->updateView(Lcom/google/android/maps/GeoPoint;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/google/android/maps/MapController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForRetryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/location/Address;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLastKnownLocation:Landroid/location/Address;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->stopSyncLocation()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->clearOverlay()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Landroid/location/Address;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getName(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Landroid/location/Address;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Landroid/location/Address;
    .param p2, "x2"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrlPrefixFromAddress(Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setMapOverlayInfo(Ljava/util/ArrayList;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/location/Address;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Landroid/location/Address;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->updateViewByCachedLocation(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditLocationAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissAskForLocationSettingDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->locateByAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    return v0
.end method

.method private askForLocationSetting()V
    .locals 3

    .prologue
    .line 696
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e1

    new-instance v2, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$7;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForLocationSettingDialog:Landroid/app/AlertDialog;

    .line 705
    return-void
.end method

.method private askForRetry(Lcom/google/android/maps/GeoPoint;)V
    .locals 3
    .param p1, "geoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForRetryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e1

    new-instance v2, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$8;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/google/android/maps/GeoPoint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForRetryDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private clearOverlay()V
    .locals 3

    .prologue
    .line 940
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    monitor-enter v2

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 942
    .local v0, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 943
    monitor-exit v2

    .line 944
    return-void

    .line 943
    .end local v0    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearOverlay(Lcom/google/android/maps/Overlay;)V
    .locals 3
    .param p1, "overlay"    # Lcom/google/android/maps/Overlay;

    .prologue
    .line 947
    if-eqz p1, :cond_0

    .line 948
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    monitor-enter v2

    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 950
    .local v0, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 951
    monitor-exit v2

    .line 953
    .end local v0    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_0
    return-void

    .line 951
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dismissAskForLocationSettingDialog()V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForLocationSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForLocationSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForLocationSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForLocationSettingDialog:Landroid/app/AlertDialog;

    .line 1029
    :cond_0
    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->isProgressDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1017
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    monitor-exit p0

    return-void

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private displayCachedLocation()V
    .locals 6

    .prologue
    .line 632
    sget-object v3, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLastKnownLocation:Landroid/location/Address;

    if-eqz v3, :cond_1

    .line 633
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    if-eqz v3, :cond_0

    .line 634
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->sendEmptyMessage(I)Z

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v1

    .line 640
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_2

    const-string v3, "LocationSharing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastFix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_2
    if-nez v1, :cond_3

    .line 644
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_3

    const-string v3, "LocationSharing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastKnownLocation-GPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_3
    if-nez v1, :cond_4

    .line 650
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_4

    const-string v3, "LocationSharing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastKnownLocation-Network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_4
    if-nez v1, :cond_5

    .line 656
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_5

    const-string v3, "LocationSharing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastKnownLocation-Passive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_5
    if-eqz v1, :cond_0

    .line 661
    invoke-static {v1}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getGeoByLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 662
    .local v0, "geoPoint":Lcom/google/android/maps/GeoPoint;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    if-eqz v3, :cond_0

    .line 663
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 665
    .local v2, "msg":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private getAddress(Landroid/location/Address;)Ljava/lang/String;
    .locals 4
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 1108
    if-nez p1, :cond_0

    .line 1109
    const/4 v3, 0x0

    .line 1123
    :goto_0
    return-object v3

    .line 1112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    .local v0, "addressBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    .line 1114
    .local v2, "maxIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-gt v1, v2, :cond_2

    .line 1115
    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1116
    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    if-eq v1, v2, :cond_1

    .line 1118
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getName(Landroid/location/Address;)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1098
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    :cond_0
    :goto_0
    return-object v0

    .line 1101
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "zoom"    # I

    .prologue
    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "link":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    :cond_0
    return-object v0
.end method

.method private getUrlPrefixFromAddress(Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 7
    .param p1, "address"    # Landroid/location/Address;
    .param p2, "geoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "link":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 974
    invoke-virtual {p1}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 978
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v5

    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->generateUrlPrefix(DD)Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_1
    return-object v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 342
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 344
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mActionBarArea:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 345
    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mActionBarArea:Landroid/widget/LinearLayout;

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mActionBarArea:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 352
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initBestProvider()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    const-string v0, "network"

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mBestProvider:Ljava/lang/String;

    .line 585
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mBestProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "LocationSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "best Provider is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mBestProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1
    return-void

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "gps"

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mBestProvider:Ljava/lang/String;

    goto :goto_0
.end method

.method private initButtonActions()V
    .locals 4

    .prologue
    .line 560
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 561
    .local v1, "doneButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 564
    .local v0, "cancelButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    return-void
.end method

.method private initMapView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 600
    invoke-static {p0}, Lcom/sonyericsson/conversations/location/ui/MapViewFactory;->createMapView(Landroid/content/Context;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v2

    .line 602
    .local v2, "view":Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    if-nez v2, :cond_1

    .line 603
    new-instance v0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;-><init>(Landroid/content/Context;)V

    .line 604
    .local v0, "cm":Lcom/sonyericsson/credentialmanagerservice/CredentialManager;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->setCredentialListener(Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;)V

    .line 605
    invoke-virtual {v0}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->startObtainingCredential()V

    .line 627
    .end local v0    # "cm":Lcom/sonyericsson/credentialmanagerservice/CredentialManager;
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    .line 609
    const v3, 0x7f0a0024

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 610
    .local v1, "layout":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 612
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setEnabled(Z)V

    .line 613
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setClickable(Z)V

    .line 614
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setBuiltInZoomControls(Z)V

    .line 616
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    .line 617
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 619
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z

    .line 621
    iget v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    if-nez v3, :cond_0

    .line 622
    new-instance v3, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    .line 623
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->displayCachedLocation()V

    goto :goto_0
.end method

.method private initStatusListener()Landroid/location/GpsStatus$Listener;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStatusListener:Landroid/location/GpsStatus$Listener;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$6;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStatusListener:Landroid/location/GpsStatus$Listener;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method private initUpdateViewHandler()V
    .locals 3

    .prologue
    .line 570
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "update location"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 571
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 572
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 573
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 574
    new-instance v2, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    .line 576
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 589
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCaption:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 597
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCaption:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private locateByAddress(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 921
    if-nez p1, :cond_0

    .line 937
    :goto_0
    return-void

    .line 925
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 927
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x7f070117

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 928
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 932
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->cancel(Z)Z

    .line 935
    :cond_2
    new-instance v1, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    .line 936
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static saveLastKnownLocation(Landroid/location/Address;)V
    .locals 0
    .param p0, "address"    # Landroid/location/Address;

    .prologue
    .line 1089
    sput-object p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLastKnownLocation:Landroid/location/Address;

    .line 1090
    return-void
.end method

.method private setLocationAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "locationAddress"    # Ljava/lang/String;

    .prologue
    .line 962
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 963
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 965
    return-void
.end method

.method private setLocationName(Ljava/lang/String;)V
    .locals 3
    .param p1, "locationName"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 958
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 959
    return-void
.end method

.method private setMapOverlayInfo(Lcom/google/android/maps/GeoPoint;)V
    .locals 6
    .param p1, "geoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const/4 v5, 0x0

    .line 870
    if-nez p1, :cond_0

    .line 882
    :goto_0
    return-void

    .line 874
    :cond_0
    const-string v2, "LocationSharing"

    const-string v3, "setMapOverlayInfo for cached location."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v2, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    .line 877
    new-instance v1, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, p1, v2, v3}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .local v1, "overlayItem":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->addOverlay(Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;)V

    .line 879
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v2, v5, v5}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setSelectedItem(IZ)V

    .line 880
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setMapOverlayInfo(Ljava/util/ArrayList;Ljava/util/List;I)V
    .locals 8
    .param p3, "focusIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/maps/GeoPoint;>;"
    .local p2, "listAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v7, 0x0

    .line 885
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 890
    new-instance v4, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    .line 893
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v4, p0}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setOverlayListener(Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay$OverlayListener;)V

    .line 895
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 896
    new-instance v3, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/GeoPoint;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .local v3, "overlayItem":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 901
    .local v0, "address":Landroid/location/Address;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getName(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setLocationName(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setLocationAddress(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrlPrefixFromAddress(Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    .line 906
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->setLocationUrl(Ljava/lang/String;)V

    .line 908
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->addOverlay(Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;)V

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 911
    .end local v0    # "address":Landroid/location/Address;
    .end local v3    # "overlayItem":Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v4, p3, v7}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setSelectedItem(IZ)V

    .line 913
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 914
    .local v2, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v4, p3, v7}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->setSelectedItem(IZ)V

    goto :goto_0
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$9;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$9;-><init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    :cond_1
    monitor-exit p0

    return-void

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startSyncLocation()V
    .locals 3

    .prologue
    .line 673
    iget v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    if-nez v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->enableMyLocation()Z

    move-result v0

    .line 676
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 677
    const-string v1, "LocationSharing"

    const-string v2, "enableMyLocation failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->setCurrentLocationOverlayListener(Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;)V

    .line 682
    .end local v0    # "res":Z
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 684
    :cond_2
    return-void
.end method

.method private stopSyncLocation()V
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->disableMyLocation()V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStatusListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 693
    :cond_1
    return-void
.end method

.method private updateView(Lcom/google/android/maps/GeoPoint;Z)V
    .locals 3
    .param p1, "geoPoint"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "isCached"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1051
    if-eqz p1, :cond_1

    .line 1052
    if-eqz p2, :cond_2

    .line 1057
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setMapOverlayInfo(Lcom/google/android/maps/GeoPoint;)V

    .line 1058
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 1068
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->postInvalidate()V

    .line 1070
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getAddressbyGeoPoint(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;)Landroid/location/Address;

    move-result-object v0

    .line 1072
    .local v0, "myAddress":Landroid/location/Address;
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrlPrefixFromAddress(Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    .line 1073
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V

    .line 1075
    if-eqz v0, :cond_3

    .line 1076
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getName(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationName(Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationAddress(Ljava/lang/String;)V

    .line 1079
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->saveLastKnownLocation(Landroid/location/Address;)V

    .line 1084
    :goto_1
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z

    .line 1086
    .end local v0    # "myAddress":Landroid/location/Address;
    :cond_1
    return-void

    .line 1063
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationFirstFixed:Z

    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 1065
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationFirstFixed:Z

    goto :goto_0

    .line 1081
    .restart local v0    # "myAddress":Landroid/location/Address;
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->askForRetry(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_1
.end method

.method private updateViewByCachedLocation(Landroid/location/Address;)V
    .locals 2
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 1032
    if-eqz p1, :cond_1

    .line 1033
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getName(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationName(Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationAddress(Ljava/lang/String;)V

    .line 1035
    invoke-static {p1}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getGeoByAddress(Landroid/location/Address;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 1036
    .local v0, "geoPoint":Lcom/google/android/maps/GeoPoint;
    if-eqz v0, :cond_0

    .line 1041
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setMapOverlayInfo(Lcom/google/android/maps/GeoPoint;)V

    .line 1042
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 1043
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrlPrefixFromAddress(Landroid/location/Address;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->postInvalidate()V

    .line 1046
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z

    .line 1048
    .end local v0    # "geoPoint":Lcom/google/android/maps/GeoPoint;
    :cond_1
    return-void
.end method


# virtual methods
.method public getAddressbyGeoPoint(Landroid/content/Context;Lcom/google/android/maps/GeoPoint;)Landroid/location/Address;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "geoPoint"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 734
    const/4 v8, 0x0

    .line 735
    .local v8, "result":Landroid/location/Address;
    const/4 v7, 0x0

    .line 739
    .local v7, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz p2, :cond_0

    .line 740
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    int-to-double v9, v5

    const-wide v11, 0x412e848000000000L

    div-double v1, v9, v11

    .line 741
    .local v1, "geoLatitude":D
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    int-to-double v9, v5

    const-wide v11, 0x412e848000000000L

    div-double v3, v9, v11

    .line 744
    .local v3, "geoLongitude":D
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "gc":Landroid/location/Geocoder;
    const-string v5, "LocationSharing"

    const-string v9, "get Address from Geocoder"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 752
    .end local v0    # "gc":Landroid/location/Geocoder;
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 753
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "result":Landroid/location/Address;
    check-cast v8, Landroid/location/Address;

    .line 754
    .restart local v8    # "result":Landroid/location/Address;
    const-string v5, "LocationSharing"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAddressbyGeoPoint"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v1    # "geoLatitude":D
    .end local v3    # "geoLongitude":D
    :cond_0
    return-object v8

    .line 747
    .restart local v1    # "geoLatitude":D
    .restart local v3    # "geoLongitude":D
    :catch_0
    move-exception v6

    .line 748
    .local v6, "e":Ljava/io/IOException;
    const-string v5, "LocationSharing"

    const-string v9, "Geocoder failed , so get Address from Http-JSON"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getAddressFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    goto :goto_0
.end method

.method public getAskForLocationSettingDialogForTest()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mAskForLocationSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public getStartTypeForTest()I
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    return v0
.end method

.method protected isLocationDisplayed()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCurrentLocationOverlay:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->isMyLocationEnabled()Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->isLocationDisplayed()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isProgressDialogShowing()Z
    .locals 1

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initBestProvider()V

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mBestProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 409
    const-string v0, ""

    const v1, 0x7f07011c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onAddressSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;

    .prologue
    .line 1143
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationName(Ljava/lang/String;)V

    .line 1144
    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLocationAddress(Ljava/lang/String;)V

    .line 1145
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setLink(Ljava/lang/String;)V

    .line 1146
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->cancel(Z)Z

    .line 400
    :cond_0
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V

    .line 401
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    .line 246
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 248
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setContentView(I)V

    .line 249
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    .line 250
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->setKeyboardVisibilityListener(Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;)V

    .line 253
    :cond_0
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mButtonPanel:Landroid/widget/LinearLayout;

    .line 254
    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditButton:Landroid/widget/Button;

    .line 255
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationNameField:Landroid/widget/EditText;

    .line 256
    const v1, 0x7f0a0021

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditLocationAddress:Landroid/widget/EditText;

    .line 257
    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mCaption:Landroid/widget/TextView;

    .line 259
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initBestProvider()V

    .line 261
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initButtonActions()V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initStatusListener()Landroid/location/GpsStatus$Listener;

    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initUpdateViewHandler()V

    .line 267
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initViews()V

    .line 269
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initMapView()V

    .line 271
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initActionBar()V

    .line 274
    iget v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I

    if-nez v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mBestProvider:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 276
    const-string v1, ""

    const v2, 0x7f07011c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->askForLocationSetting()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 287
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0f0001

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 288
    const v3, 0x7f0a00bf

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 289
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    .line 290
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 293
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 295
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    .line 297
    .local v1, "info":Landroid/app/SearchableInfo;
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 298
    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 301
    .end local v1    # "info":Landroid/app/SearchableInfo;
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method public onCurrentLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    .line 1150
    if-eqz p1, :cond_1

    .line 1151
    invoke-static {p1}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getGeoByLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 1152
    .local v1, "pt":Lcom/google/android/maps/GeoPoint;
    const-string v2, "LocationSharing"

    const-string v3, "onCurrentLocationChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    if-eqz v2, :cond_1

    .line 1155
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    if-eqz v2, :cond_0

    .line 1156
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->removeAllOverlayItem()V

    .line 1157
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->clearOverlay(Lcom/google/android/maps/Overlay;)V

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->removeMessages(I)V

    .line 1161
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1163
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1164
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1167
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pt":Lcom/google/android/maps/GeoPoint;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mSearchAddressAsyncTask:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$SearchAddressAsyncTask;->cancel(Z)Z

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mUpdateViewHandler:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$UpdateLocationViewHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->stopSyncLocation()V

    .line 391
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 392
    return-void
.end method

.method public onDisplayHeightChange(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1172
    .local v0, "rectgle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1173
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 1174
    .local v1, "visibleScreenHeight":I
    if-ne p1, v1, :cond_3

    .line 1175
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mVirtualKeyBoardShowing:Z

    if-eqz v2, :cond_1

    .line 1176
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mVirtualKeyBoardShowing:Z

    .line 1177
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    if-eqz v2, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 1179
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setDrawable(Z)V

    .line 1184
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1195
    :cond_1
    :goto_1
    return-void

    .line 1181
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setDrawable(Z)V

    goto :goto_0

    .line 1186
    :cond_3
    if-ge p1, v1, :cond_1

    .line 1187
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mVirtualKeyBoardShowing:Z

    if-nez v2, :cond_1

    .line 1188
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mVirtualKeyBoardShowing:Z

    .line 1189
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    if-eqz v2, :cond_4

    .line 1190
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setDrawable(Z)V

    .line 1192
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mButtonPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onKeyObtained(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1201
    if-eqz p1, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->initMapView()V

    .line 1203
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->startSyncLocation()V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 336
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 329
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->onSearchRequested()Z

    goto :goto_0

    .line 332
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 333
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a00bf -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->stopSyncLocation()V

    .line 377
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 378
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->startSyncLocation()V

    .line 372
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 968
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;

    .line 969
    return-void
.end method

.method public setLocationSelectedForTest(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z

    .line 1135
    return-void
.end method
