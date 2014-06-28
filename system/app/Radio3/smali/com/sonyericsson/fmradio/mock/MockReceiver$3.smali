.class Lcom/sonyericsson/fmradio/mock/MockReceiver$3;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->scheduleDelayedUpdates(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

.field final synthetic val$newFrequency:I

.field final synthetic val$newRdsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iput p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->val$newFrequency:I

    iput-object p3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->val$newRdsString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 304
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    const/4 v4, 0x0

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRdsUpdate:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1002(Lcom/sonyericsson/fmradio/mock/MockReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 306
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->val$newFrequency:I

    if-eq v3, v4, :cond_1

    .line 315
    :cond_0
    return-void

    .line 309
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v2, "rdsData":Landroid/os/Bundle;
    const-string v3, "PSN"

    iget-object v4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->val$newRdsString:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mRDSDataFoundListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1100(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .line 312
    .local v1, "l":Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;
    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$3;->val$newFrequency:I

    invoke-interface {v1, v2, v3}, Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;->onRDSDataFound(Landroid/os/Bundle;I)V

    goto :goto_0
.end method
