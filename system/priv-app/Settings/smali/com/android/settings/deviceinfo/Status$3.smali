.class Lcom/android/settings/deviceinfo/Status$3;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    # invokes: Lcom/android/settings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$3;->this$0:Lcom/android/settings/deviceinfo/Status;

    # invokes: Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)V

    .line 242
    return-void
.end method
