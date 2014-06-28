.class Lcom/android/phone/SimProbeService$1;
.super Landroid/os/Handler;
.source "SimProbeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimProbeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimProbeService;


# direct methods
.method constructor <init>(Lcom/android/phone/SimProbeService;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/phone/SimProbeService$1;->this$0:Lcom/android/phone/SimProbeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    return-void
.end method
