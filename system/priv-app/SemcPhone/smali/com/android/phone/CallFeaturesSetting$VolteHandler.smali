.class Lcom/android/phone/CallFeaturesSetting$VolteHandler;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VolteHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p2, "x1"    # Lcom/android/phone/CallFeaturesSetting$1;

    .prologue
    .line 2438
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting$VolteHandler;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    return-void
.end method

.method private handleVolteQueryError(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2459
    if-eqz p1, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when getting/setting volte setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$800(Ljava/lang/String;)V

    .line 2463
    :goto_0
    return-void

    .line 2462
    :cond_0
    const-string v0, "Error when getting/setting volte setting"

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$800(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleVolteQueryResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v0, 0x1

    .line 2466
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVolteQueryResult result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$800(Ljava/lang/String;)V

    .line 2468
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$VolteHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2469
    return-void

    .line 2468
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2441
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2442
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 2443
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting$VolteHandler;->handleVolteQueryError(Landroid/os/AsyncResult;)V

    .line 2456
    :goto_0
    return-void

    .line 2445
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2447
    :pswitch_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 2448
    .local v1, "result":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting$VolteHandler;->handleVolteQueryResult(I)V

    goto :goto_0

    .line 2452
    .end local v1    # "result":[B
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting$VolteHandler;->handleVolteQueryResult(I)V

    goto :goto_0

    .line 2445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
