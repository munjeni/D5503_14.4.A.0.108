.class public Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# static fields
.field private static final ESTIMATED_MAX_STARTUP_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MediaButtonReceiver"

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static acquireTimedWakeLock(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    .line 81
    sget-object v1, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 87
    sget-object v1, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "MediaButtonReceiver"

    const-string v2, "Failed to acquire wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    if-nez p2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 51
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v1, :cond_0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 57
    invoke-static {}, Lcom/sonyericsson/fmradio/service/FmService;->onMediaButtonKeyDownEvent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    invoke-static {p1}, Lcom/sonyericsson/fmradio/ui/MockUtil;->setupFmService(Landroid/content/Context;)V

    .line 61
    new-instance v2, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;

    invoke-direct {v2, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/sonyericsson/fmradio/service/FmService;->setFeedbackProvider(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "user-initiated-start"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    const/16 v2, 0x1388

    invoke-static {p1, v2}, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;->acquireTimedWakeLock(Landroid/content/Context;I)V

    .line 74
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    goto :goto_0
.end method
