.class Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;
.super Ljava/lang/Object;
.source "AudioSampleDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->requestToReadSampleData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

.field final synthetic val$eos:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;Z)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;->this$0:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;->val$eos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;->this$0:Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource$1;->val$eos:Z

    # invokes: Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->readSampleData(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;->access$000(Lcom/sonymobile/cameracommon/videowriter/AudioSampleDataSource;Z)V

    .line 143
    return-void
.end method
