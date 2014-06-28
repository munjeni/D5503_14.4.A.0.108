.class public Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
.super Ljava/lang/Object;
.source "LikeAvailableChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;,
        Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;,
        Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;
    }
.end annotation


# static fields
.field private static final REQUEST_FB_LIKE_ALLOWED:I = 0x2

.field private static final RESPONSE_FB_LIKE_ALLOWED:I = 0x1

.field private static final RESPONSE_FB_LIKE_NOT_ALLOWED:I

.field private static final sLikeAllowedIntent:Landroid/content/Intent;


# instance fields
.field private mConnection:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;

.field private mIncomingHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

.field private mLikeListener:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.trackid.intent.FB_LIKE_ALLOWED_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->sLikeAllowedIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "likeListener"    # Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mLikeListener:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;

    .line 60
    new-instance v0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;-><init>(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mIncomingHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    .line 61
    new-instance v0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mIncomingHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mConnection:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mLikeListener:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->unbindService()V

    return-void
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mConnection:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->unbind()V

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mIncomingHandler:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$IncomingHandler;->release()V

    .line 127
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->unbindService()V

    .line 144
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mConnection:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeServiceConnection;

    sget-object v1, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->sLikeAllowedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->bind(Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->mLikeListener:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;->onLikeAvailable(Z)V

    .line 137
    :cond_0
    return-void
.end method
