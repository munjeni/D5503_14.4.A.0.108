.class Lcom/android/phone/SomcInCallScreen$20;
.super Landroid/os/AsyncTask;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->handleLandOwnerInfo(Lcom/android/phone/SomcCallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;

.field final synthetic val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V
    .locals 0

    .prologue
    .line 4379
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$20;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$20;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4379
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen$20;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$20;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$20;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$20;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/phone/SomcLandOwnerInfo;->getLandOwnerInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    .line 4385
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4379
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen$20;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$20;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$20;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4392
    return-void

    .line 4390
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$20;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    goto :goto_0
.end method
