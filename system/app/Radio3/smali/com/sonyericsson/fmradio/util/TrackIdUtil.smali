.class public Lcom/sonyericsson/fmradio/util/TrackIdUtil;
.super Ljava/lang/Object;
.source "TrackIdUtil.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "com.sonyericsson.fmradio"

.field private static final sLikeIntent:Landroid/content/Intent;

.field private static final sTrackIdIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.trackid.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sTrackIdIntent:Landroid/content/Intent;

    .line 34
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sTrackIdIntent:Landroid/content/Intent;

    const-string v1, "AUTO_START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sTrackIdIntent:Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "com.sonyericsson.fmradio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sTrackIdIntent:Landroid/content/Intent;

    const-string v1, "audiosource"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.trackid.intent.action.LIKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sLikeIntent:Landroid/content/Intent;

    .line 39
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sLikeIntent:Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "com.sonyericsson.fmradio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sLikeIntent:Landroid/content/Intent;

    const-string v1, "audiosource"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAppInstalled(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launchLike(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "/main/fbLike"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sLikeIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public static launchTrackId(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "/main/trackID"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sTrackIdIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public static trackIdAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->sTrackIdIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->isAppInstalled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
