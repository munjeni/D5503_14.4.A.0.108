.class Lcom/android/phone/SomcInCallScreen$18;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Lcom/android/phone/OnRedirectingQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;

.field final synthetic val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V
    .locals 0

    .prologue
    .line 3250
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$18;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedirectingNameQueryComplete(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3252
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    .line 3253
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3254
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3255
    .local v0, "columnIndexName":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3256
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    .line 3259
    .end local v0    # "columnIndexName":I
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$18;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v2, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v3, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    return-void
.end method
