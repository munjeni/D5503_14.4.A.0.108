.class Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;
.super Ljava/util/TimerTask;
.source "SomcAmMessagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmMessagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayCounterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmMessagePreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/am/SomcAmMessagePreference;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/am/SomcAmMessagePreference;Lcom/android/phone/am/SomcAmMessagePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/am/SomcAmMessagePreference;
    .param p2, "x1"    # Lcom/android/phone/am/SomcAmMessagePreference$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;-><init>(Lcom/android/phone/am/SomcAmMessagePreference;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference$PlayCounterTask;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    iget-object v0, v0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method
