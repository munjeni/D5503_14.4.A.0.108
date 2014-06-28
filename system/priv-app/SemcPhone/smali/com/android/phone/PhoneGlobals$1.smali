.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v2, "SCREEN_ON, enable accelerometer listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AccelerometerListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    const-string v2, "SCREEN_OFF, disable accelerometer listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AccelerometerListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    goto :goto_0
.end method
