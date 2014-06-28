.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
        Landroid/app/ContextImpl$StaticServiceFetcher;,
        Landroid/app/ContextImpl$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_FILE_LIST:[Ljava/lang/String;

.field private static final SYSTEM_SERVICE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ContextImpl$ServiceFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextImpl"

.field private static WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

.field private static sIsSupportingWifiSimAuth:Z

.field private static sNextPerContextServiceCacheIndex:I

.field private static sSharedPrefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mBasePackageName:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private mExternalCacheDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalFilesDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalObbDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field final mMainThread:Landroid/app/ActivityThread;

.field private final mOpPackageName:Ljava/lang/String;

.field private mOuterContext:Landroid/content/Context;

.field private final mOverrideConfiguration:Landroid/content/res/Configuration;

.field final mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field private final mRestricted:Z

.field final mServiceCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    .line 308
    sput v1, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    .line 309
    sput-boolean v1, Landroid/app/ContextImpl;->sIsSupportingWifiSimAuth:Z

    .line 320
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0}, Landroid/app/ContextImpl$1;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    .line 327
    const-string v0, "accessibility"

    new-instance v1, Landroid/app/ContextImpl$2;

    invoke-direct {v1}, Landroid/app/ContextImpl$2;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 332
    const-string v0, "captioning"

    new-instance v1, Landroid/app/ContextImpl$3;

    invoke-direct {v1}, Landroid/app/ContextImpl$3;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 337
    const-string v0, "account"

    new-instance v1, Landroid/app/ContextImpl$4;

    invoke-direct {v1}, Landroid/app/ContextImpl$4;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 344
    const-string v0, "activity"

    new-instance v1, Landroid/app/ContextImpl$5;

    invoke-direct {v1}, Landroid/app/ContextImpl$5;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 349
    const-string v0, "alarm"

    new-instance v1, Landroid/app/ContextImpl$6;

    invoke-direct {v1}, Landroid/app/ContextImpl$6;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 356
    const-string v0, "audio"

    new-instance v1, Landroid/app/ContextImpl$7;

    invoke-direct {v1}, Landroid/app/ContextImpl$7;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 361
    const-string/jumbo v0, "media_router"

    new-instance v1, Landroid/app/ContextImpl$8;

    invoke-direct {v1}, Landroid/app/ContextImpl$8;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 366
    const-string v0, "bluetooth"

    new-instance v1, Landroid/app/ContextImpl$9;

    invoke-direct {v1}, Landroid/app/ContextImpl$9;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 371
    const-string v0, "clipboard"

    new-instance v1, Landroid/app/ContextImpl$10;

    invoke-direct {v1}, Landroid/app/ContextImpl$10;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 377
    const-string v0, "connectivity"

    new-instance v1, Landroid/app/ContextImpl$11;

    invoke-direct {v1}, Landroid/app/ContextImpl$11;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 384
    const-string v0, "country_detector"

    new-instance v1, Landroid/app/ContextImpl$12;

    invoke-direct {v1}, Landroid/app/ContextImpl$12;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 390
    const-string v0, "device_policy"

    new-instance v1, Landroid/app/ContextImpl$13;

    invoke-direct {v1}, Landroid/app/ContextImpl$13;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 395
    const-string v0, "download"

    new-instance v1, Landroid/app/ContextImpl$14;

    invoke-direct {v1}, Landroid/app/ContextImpl$14;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 400
    const-string/jumbo v0, "nfc"

    new-instance v1, Landroid/app/ContextImpl$15;

    invoke-direct {v1}, Landroid/app/ContextImpl$15;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 405
    const-string v0, "dropbox"

    new-instance v1, Landroid/app/ContextImpl$16;

    invoke-direct {v1}, Landroid/app/ContextImpl$16;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 410
    const-string v0, "input"

    new-instance v1, Landroid/app/ContextImpl$17;

    invoke-direct {v1}, Landroid/app/ContextImpl$17;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 415
    const-string v0, "display"

    new-instance v1, Landroid/app/ContextImpl$18;

    invoke-direct {v1}, Landroid/app/ContextImpl$18;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 421
    const-string v0, "input_method"

    new-instance v1, Landroid/app/ContextImpl$19;

    invoke-direct {v1}, Landroid/app/ContextImpl$19;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 426
    const-string/jumbo v0, "textservices"

    new-instance v1, Landroid/app/ContextImpl$20;

    invoke-direct {v1}, Landroid/app/ContextImpl$20;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 431
    const-string v0, "keyguard"

    new-instance v1, Landroid/app/ContextImpl$21;

    invoke-direct {v1}, Landroid/app/ContextImpl$21;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 440
    const-string v0, "layout_inflater"

    new-instance v1, Landroid/app/ContextImpl$22;

    invoke-direct {v1}, Landroid/app/ContextImpl$22;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 445
    const-string v0, "location"

    new-instance v1, Landroid/app/ContextImpl$23;

    invoke-direct {v1}, Landroid/app/ContextImpl$23;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 451
    const-string/jumbo v0, "netpolicy"

    new-instance v1, Landroid/app/ContextImpl$24;

    invoke-direct {v1}, Landroid/app/ContextImpl$24;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 459
    const-string/jumbo v0, "notification"

    new-instance v1, Landroid/app/ContextImpl$25;

    invoke-direct {v1}, Landroid/app/ContextImpl$25;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 472
    const-string/jumbo v0, "servicediscovery"

    new-instance v1, Landroid/app/ContextImpl$26;

    invoke-direct {v1}, Landroid/app/ContextImpl$26;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 483
    const-string/jumbo v0, "power"

    new-instance v1, Landroid/app/ContextImpl$27;

    invoke-direct {v1}, Landroid/app/ContextImpl$27;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 491
    const-string/jumbo v0, "search"

    new-instance v1, Landroid/app/ContextImpl$28;

    invoke-direct {v1}, Landroid/app/ContextImpl$28;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 497
    const-string/jumbo v0, "sensor"

    new-instance v1, Landroid/app/ContextImpl$29;

    invoke-direct {v1}, Landroid/app/ContextImpl$29;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 503
    const-string/jumbo v0, "statusbar"

    new-instance v1, Landroid/app/ContextImpl$30;

    invoke-direct {v1}, Landroid/app/ContextImpl$30;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 508
    const-string/jumbo v0, "storage"

    new-instance v1, Landroid/app/ContextImpl$31;

    invoke-direct {v1}, Landroid/app/ContextImpl$31;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 519
    const-string/jumbo v0, "phone"

    new-instance v1, Landroid/app/ContextImpl$32;

    invoke-direct {v1}, Landroid/app/ContextImpl$32;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 524
    const-string/jumbo v0, "phone_msim"

    new-instance v1, Landroid/app/ContextImpl$33;

    invoke-direct {v1}, Landroid/app/ContextImpl$33;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 529
    const-string/jumbo v0, "uimode"

    new-instance v1, Landroid/app/ContextImpl$34;

    invoke-direct {v1}, Landroid/app/ContextImpl$34;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 534
    const-string/jumbo v0, "usb"

    new-instance v1, Landroid/app/ContextImpl$35;

    invoke-direct {v1}, Landroid/app/ContextImpl$35;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 540
    const-string/jumbo v0, "serial"

    new-instance v1, Landroid/app/ContextImpl$36;

    invoke-direct {v1}, Landroid/app/ContextImpl$36;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 546
    const-string/jumbo v0, "vibrator"

    new-instance v1, Landroid/app/ContextImpl$37;

    invoke-direct {v1}, Landroid/app/ContextImpl$37;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 551
    const-string/jumbo v0, "wallpaper"

    sget-object v1, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 553
    const-string/jumbo v0, "wifi"

    new-instance v1, Landroid/app/ContextImpl$38;

    invoke-direct {v1}, Landroid/app/ContextImpl$38;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 560
    const-string/jumbo v0, "wifip2p"

    new-instance v1, Landroid/app/ContextImpl$39;

    invoke-direct {v1}, Landroid/app/ContextImpl$39;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 567
    const-string/jumbo v0, "window"

    new-instance v1, Landroid/app/ContextImpl$40;

    invoke-direct {v1}, Landroid/app/ContextImpl$40;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 582
    const-string/jumbo v0, "user"

    new-instance v1, Landroid/app/ContextImpl$41;

    invoke-direct {v1}, Landroid/app/ContextImpl$41;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 589
    const-string v0, "appops"

    new-instance v1, Landroid/app/ContextImpl$42;

    invoke-direct {v1}, Landroid/app/ContextImpl$42;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 596
    const-string v0, "camera"

    new-instance v1, Landroid/app/ContextImpl$43;

    invoke-direct {v1}, Landroid/app/ContextImpl$43;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 605
    const-string v0, "fm_receiver"

    new-instance v1, Landroid/app/ContextImpl$44;

    invoke-direct {v1}, Landroid/app/ContextImpl$44;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 617
    const-string/jumbo v0, "print"

    new-instance v1, Landroid/app/ContextImpl$45;

    invoke-direct {v1}, Landroid/app/ContextImpl$45;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 625
    const-string v0, "consumer_ir"

    new-instance v1, Landroid/app/ContextImpl$46;

    invoke-direct {v1}, Landroid/app/ContextImpl$46;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 630
    const-string v0, "com.orange.authentication.simcard"

    new-instance v1, Landroid/app/ContextImpl$47;

    invoke-direct {v1}, Landroid/app/ContextImpl$47;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 638
    return-void
.end method

.method private constructor <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "restricted"    # Z
    .param p7, "display"    # Landroid/view/Display;
    .param p8, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 2033
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 211
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 652
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mServiceCache:Ljava/util/ArrayList;

    .line 2034
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 2036
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2037
    iput-object p4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 2038
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    .line 2040
    if-nez p5, :cond_0

    .line 2041
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p5

    .line 2043
    :cond_0
    iput-object p5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    .line 2045
    iput-object p3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2046
    new-instance v1, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v1, p0, p2, p5}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 2047
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2048
    move-object/from16 v0, p7

    iput-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2049
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2051
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v4

    .line 2052
    .local v4, "displayId":I
    const/4 v6, 0x0

    .line 2053
    .local v6, "compatInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz p1, :cond_1

    .line 2054
    invoke-virtual {p1, v4}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 2056
    :cond_1
    if-nez v6, :cond_2

    if-nez v4, :cond_2

    .line 2057
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 2059
    :cond_2
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v6}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 2060
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, p4}, Landroid/view/DisplayAdjustments;->setActivityToken(Landroid/os/IBinder;)V

    .line 2062
    invoke-virtual {p3, p2}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v9

    .line 2063
    .local v9, "resources":Landroid/content/res/Resources;
    if-eqz v9, :cond_4

    .line 2064
    if-nez p4, :cond_3

    if-nez v4, :cond_3

    if-nez p8, :cond_3

    if-eqz v6, :cond_4

    iget v1, v6, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v9}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 2069
    :cond_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {p3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p8

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;

    move-result-object v9

    .line 2074
    :cond_4
    iput-object v9, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2076
    if-eqz p1, :cond_6

    .line 2077
    iget-object v1, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 2078
    iget-object v1, p1, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 2093
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2096
    const/4 v1, 0x1

    sput-boolean v1, Landroid/app/ContextImpl;->sIsSupportingWifiSimAuth:Z

    .line 2098
    :cond_5
    return-void

    .line 2080
    :cond_6
    iget-object v1, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 2081
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2082
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 2087
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    goto :goto_0

    .line 2089
    :cond_7
    iget-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 187
    sget v0, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ContextImpl;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 187
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Landroid/app/ContextImpl;->sIsSupportingWifiSimAuth:Z

    return v0
.end method

.method private bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 11
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1605
    if-nez p2, :cond_0

    .line 1606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1609
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 1614
    .local v5, "sd":Landroid/app/IServiceConnection;
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1616
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    .line 1617
    .local v10, "token":Landroid/os/IBinder;
    if-nez v10, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1620
    or-int/lit8 p3, p3, 0x20

    .line 1622
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1623
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v9

    .line 1627
    .local v9, "res":I
    if-gez v9, :cond_3

    .line 1628
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    .end local v9    # "res":I
    .end local v10    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v8

    .line 1633
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 1612
    .end local v5    # "sd":Landroid/app/IServiceConnection;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1631
    .restart local v5    # "sd":Landroid/app/IServiceConnection;
    .restart local v9    # "res":I
    .restart local v10    # "token":Landroid/os/IBinder;
    :cond_3
    if-eqz v9, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;)Landroid/app/ContextImpl;
    .locals 9
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 2025
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2026
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2027
    :cond_1
    new-instance v0, Landroid/app/ContextImpl;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method static createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .locals 9
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    .prologue
    const/4 v1, 0x0

    .line 2018
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2019
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method static createDropBoxManager()Landroid/os/DropBoxManager;
    .locals 3

    .prologue
    .line 1680
    const-string v2, "dropbox"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1681
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .line 1682
    .local v1, "service":Lcom/android/internal/os/IDropBoxManagerService;
    if-nez v1, :cond_0

    .line 1687
    const/4 v2, 0x0

    .line 1689
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, v1}, Landroid/os/DropBoxManager;-><init>(Lcom/android/internal/os/IDropBoxManagerService;)V

    goto :goto_0
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .locals 9
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2009
    new-instance v3, Landroid/app/LoadedApk;

    invoke-direct {v3, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    .line 2010
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    new-instance v0, Landroid/app/ContextImpl;

    move-object v2, p0

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    .line 2012
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v4, v6}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2014
    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 1732
    if-eqz p2, :cond_2

    .line 1733
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1741
    :cond_2
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "modeFlags"    # I
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 1858
    if-eqz p2, :cond_2

    .line 1859
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " permission on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1869
    :cond_2
    return-void
.end method

.method private ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    .locals 8
    .param p1, "dirs"    # [Ljava/io/File;

    .prologue
    .line 2186
    array-length v5, p1

    new-array v4, v5, [Ljava/io/File;

    .line 2187
    .local v4, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 2188
    aget-object v0, p1, v1

    .line 2189
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2190
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2195
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2197
    .local v2, "mount":Landroid/os/storage/IMountService;
    const/4 v3, -0x1

    .line 2199
    .local v3, "res":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IMountService;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2202
    :goto_1
    if-eqz v3, :cond_0

    .line 2203
    const-string v5, "ContextImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to ensure directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    const/4 v0, 0x0

    .line 2209
    .end local v2    # "mount":Landroid/os/storage/IMountService;
    .end local v3    # "res":I
    :cond_0
    aput-object v0, v4, v1

    .line 2187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2211
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    return-object v4

    .line 2200
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "mount":Landroid/os/storage/IMountService;
    .restart local v3    # "res":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getDataDirFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1988
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1021
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1024
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "databases"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1027
    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDisplayId()I
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 643
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 644
    move-object p0, v0

    goto :goto_0

    .line 646
    .end local v0    # "nextContext":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/ContextImpl;

    .end local p0    # "context":Landroid/content/Context;
    return-object p0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 816
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 820
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    .prologue
    .line 1676
    sget-object v0, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    invoke-virtual {v0, p0}, Landroid/app/ContextImpl$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2174
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 2177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "userId"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1472
    const/4 v3, 0x0

    .line 1473
    .local v3, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_1

    .line 1474
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    if-eqz p6, :cond_2

    .line 1475
    if-nez p5, :cond_0

    .line 1476
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1478
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object v1, p1

    move-object v2, p6

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    move-result-object v3

    .line 1490
    .restart local v3    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1494
    :goto_1
    return-object v0

    .line 1482
    :cond_2
    if-nez p5, :cond_3

    .line 1483
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1485
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p5

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v3

    .restart local v3    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1493
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move-object v0, v8

    .line 1494
    goto :goto_1
.end method

.method private static registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V
    .locals 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "fetcher"    # Landroid/app/ContextImpl$ServiceFetcher;

    .prologue
    .line 311
    instance-of v0, p1, Landroid/app/ContextImpl$StaticServiceFetcher;

    if-nez v0, :cond_0

    .line 312
    sget v0, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    iput v0, p1, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    .line 314
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .prologue
    const/4 v2, -0x1

    .line 2134
    or-int/lit16 v0, p2, 0x1b0

    .line 2137
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 2138
    or-int/lit8 v0, v0, 0x4

    .line 2140
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 2141
    or-int/lit8 v0, v0, 0x2

    .line 2147
    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2148
    return-void
.end method

.method private startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1544
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1545
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1546
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v2, v3, p1, v4, v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1549
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1551
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1561
    .end local v0    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 1562
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v0

    .line 1554
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1555
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 1573
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1574
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1575
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 1578
    .local v1, "res":I
    if-gez v1, :cond_1

    .line 1579
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to stop service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 1584
    :cond_0
    :goto_0
    return v2

    .line 1582
    .restart local v1    # "res":I
    :cond_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "uriModeFlags"    # I

    .prologue
    .line 1842
    packed-switch p1, :pswitch_data_0

    .line 1851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1845
    :pswitch_0
    const-string/jumbo v0, "read and write"

    .line 1849
    :goto_0
    return-object v0

    .line 1847
    :pswitch_1
    const-string/jumbo v0, "read"

    goto :goto_0

    .line 1849
    :pswitch_2
    const-string/jumbo v0, "write"

    goto :goto_0

    .line 1842
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createDirectory"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2154
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_1

    .line 2155
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2156
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2157
    .local v0, "dir":Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2158
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2164
    .end local v1    # "dirPath":Ljava/lang/String;
    .local v2, "f":Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2165
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2170
    :cond_0
    return-object v2

    .line 2160
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .line 2161
    .restart local v0    # "dir":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .restart local v2    # "f":Ljava/io/File;
    goto :goto_0
.end method

.method private validateServiceIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 1513
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1515
    const-string v0, "ContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implicit intents with startService are not safe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    return-void
.end method

.method private warnIfCallingFromSystemProcess()V
    .locals 3

    .prologue
    .line 1913
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1914
    const-string v0, "ContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling a method in the system process without a qualified user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_0
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 1591
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1592
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1599
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1721
    if-nez p1, :cond_0

    .line 1722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1725
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1811
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1708
    if-nez p1, :cond_0

    .line 1709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1712
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1713
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 1716
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1801
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1802
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    .line 1806
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 1694
    if-nez p1, :cond_0

    .line 1695
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1699
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1702
    :goto_0
    return v1

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .prologue
    .line 1792
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1795
    :goto_0
    return v1

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 1823
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_1

    .line 1824
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 1837
    :cond_0
    :goto_0
    return v0

    .line 1830
    :cond_1
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_2

    .line 1831
    if-eqz p3, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1837
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1064
    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 9
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 1952
    if-nez p1, :cond_0

    .line 1953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "overrideConfiguration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-boolean v6, p0, Landroid/app/ContextImpl;->mRestricted:Z

    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 9
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 1962
    if-nez p1, :cond_0

    .line 1963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1966
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-boolean v6, p0, Landroid/app/ContextImpl;->mRestricted:Z

    iget-object v8, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1929
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v6, 0x1

    .line 1930
    .local v6, "restricted":Z
    :goto_0
    const-string/jumbo v1, "system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1931
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    .line 1941
    :cond_1
    return-object v0

    .line 1929
    .end local v6    # "restricted":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1935
    .restart local v6    # "restricted":Z
    :cond_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, p1, v2, p2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v3

    .line 1937
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_4

    .line 1938
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    .line 1940
    .local v0, "c":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 1946
    .end local v0    # "c":Landroid/app/ContextImpl;
    :cond_4
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1014
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "list":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1000
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 1001
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1004
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return v1

    .line 1002
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 857
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1762
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1767
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1888
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1892
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1753
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1758
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1880
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1745
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1750
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 1873
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 1897
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1905
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "list":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 928
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 932
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 933
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 934
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    monitor-exit v1

    .line 947
    :goto_0
    return-object v0

    .line 938
    :cond_1
    const-string v0, "ContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create cache directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 941
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 946
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 1993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1994
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1995
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1996
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1997
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 2000
    :cond_0
    return-object v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1981
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 2

    .prologue
    .line 958
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 960
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    .line 964
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    if-nez v1, :cond_0

    .line 894
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    .line 899
    .local v0, "dirs":[Ljava/io/File;
    if-eqz p1, :cond_1

    .line 900
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 904
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 905
    .end local v0    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 862
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 866
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 867
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 868
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v1

    .line 880
    :goto_0
    return-object v0

    .line 872
    :cond_1
    const-string v0, "ContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 875
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 880
    :cond_3
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 911
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 2

    .prologue
    .line 916
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    .line 922
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final getOuterContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .prologue
    .line 666
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 676
    :goto_0
    return-object v1

    .line 670
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 671
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_1

    .line 673
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_0

    .line 676
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 729
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android"

    goto :goto_0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2114
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 2117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 775
    const-class v6, Landroid/app/ContextImpl;

    monitor-enter v6

    .line 776
    :try_start_0
    sget-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    if-nez v5, :cond_0

    .line 777
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 782
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_1

    .line 783
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 784
    .restart local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    sget-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_1
    iget-object v5, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x13

    if-ge v5, v7, :cond_2

    .line 792
    if-nez p1, :cond_2

    .line 793
    const-string/jumbo p1, "null"

    .line 797
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SharedPreferencesImpl;

    .line 798
    .local v3, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v3, :cond_3

    .line 799
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 800
    .local v2, "prefsFile":Ljava/io/File;
    new-instance v3, Landroid/app/SharedPreferencesImpl;

    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-direct {v3, v2, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    .line 801
    .restart local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    monitor-exit v6

    move-object v4, v3

    .line 812
    .end local v2    # "prefsFile":Ljava/io/File;
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    .local v4, "sp":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 804
    .end local v4    # "sp":Ljava/lang/Object;
    .restart local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    and-int/lit8 v5, p2, 0x4

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_5

    .line 810
    :cond_4
    invoke-virtual {v3}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    :cond_5
    move-object v4, v3

    .line 812
    .restart local v4    # "sp":Ljava/lang/Object;
    goto :goto_0

    .line 804
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    .end local v4    # "sp":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 769
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1671
    sget-object v1, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl$ServiceFetcher;

    .line 1672
    .local v0, "fetcher":Landroid/app/ContextImpl$ServiceFetcher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/ContextImpl$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 708
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 710
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 711
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 713
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1033
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 1048
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 1043
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .prologue
    .line 1772
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1777
    :goto_0
    return-void

    .line 1775
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2101
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 2102
    return-void
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 1976
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 828
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 834
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 835
    .local v0, "append":Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 837
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 838
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_1
    return-object v2

    .end local v0    # "append":Z
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    move v0, v4

    .line 834
    goto :goto_0

    .line 840
    .restart local v0    # "append":Z
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 843
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 844
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 845
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 849
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 850
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 987
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 988
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    .line 989
    .local v2, "flags":I
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_0

    .line 990
    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    .line 992
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 993
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 994
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .prologue
    .line 2110
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v0, 0x0

    .line 1452
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 1458
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 1465
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1377
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    .local v1, "resolvedType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1380
    .end local p1    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 1383
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1384
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :goto_0
    return-void

    .line 1386
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1437
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, "resolvedType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1440
    .end local p1    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 1443
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1444
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1782
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    :goto_0
    return-void

    .line 1785
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .prologue
    .line 2105
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1171
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1172
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1174
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1175
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1185
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1186
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1188
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1189
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 1199
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1200
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1202
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1203
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move-object v8, p2

    move/from16 v9, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_0
    return-void

    .line 1207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1271
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1273
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1274
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1284
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1286
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1287
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    move-object/from16 v8, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :goto_0
    return-void

    .line 1291
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1214
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1215
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1217
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1218
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1240
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1241
    const/4 v4, 0x0

    .line 1242
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_1

    .line 1243
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1244
    if-nez p5, :cond_0

    .line 1245
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1247
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1258
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1260
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1261
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p2

    move/from16 v9, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_1
    return-void

    .line 1251
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p5, :cond_3

    .line 1252
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1254
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1265
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1231
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1233
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1299
    const/4 v4, 0x0

    .line 1300
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_1

    .line 1301
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1302
    if-nez p5, :cond_0

    .line 1303
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1316
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1318
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1319
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :goto_1
    return-void

    .line 1309
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p5, :cond_3

    .line 1310
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1312
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1323
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1329
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1330
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1332
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1333
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :goto_0
    return-void

    .line 1337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1392
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1394
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1395
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    :goto_0
    return-void

    .line 1398
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1346
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1347
    const/4 v4, 0x0

    .line 1348
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_1

    .line 1349
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1350
    if-nez p3, :cond_0

    .line 1351
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1353
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1364
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1366
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1367
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :goto_1
    return-void

    .line 1357
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 1358
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1360
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1371
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1407
    const/4 v4, 0x0

    .line 1408
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_1

    .line 1409
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1410
    if-nez p4, :cond_0

    .line 1411
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1413
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1424
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1427
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    :goto_1
    return-void

    .line 1417
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    .line 1418
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1420
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1431
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2121
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 2122
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 697
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 698
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1054
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1059
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 1107
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1109
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1127
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1128
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1137
    return-void
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    .line 1114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 1123
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1068
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1070
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1080
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1081
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1082
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    const/4 v6, -0x1

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 1090
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1096
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v3, p1

    move-object v11, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1075
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1076
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1658
    if-eqz p3, :cond_0

    .line 1659
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1661
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1666
    :goto_0
    return v0

    .line 1663
    :catch_0
    move-exception v0

    move v0, v8

    .line 1666
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1143
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1144
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1151
    const/4 v4, 0x0

    .line 1152
    .local v4, "resolvedType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1153
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1154
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1155
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1157
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v11

    .line 1161
    .local v11, "result":I
    const/4 v0, -0x6

    if-ne v11, v0, :cond_1

    .line 1162
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v0

    .line 1165
    .end local v11    # "result":I
    :catch_0
    move-exception v0

    .line 1167
    :goto_0
    return-void

    .line 1164
    .restart local v11    # "result":I
    :cond_1
    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 1527
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1528
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1539
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 1533
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1534
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1568
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 1639
    if-nez p1, :cond_0

    .line 1640
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connection is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1642
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_1

    .line 1643
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 1646
    .local v0, "sd":Landroid/app/IServiceConnection;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :goto_0
    return-void

    .line 1650
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1647
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1500
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1504
    .local v0, "rd":Landroid/content/IIntentReceiver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :goto_0
    return-void

    .line 1508
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1505
    .restart local v0    # "rd":Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
