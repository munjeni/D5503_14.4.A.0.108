.class Lcom/sonymobile/superstamina/gateway/WakelockHandler$1;
.super Ljava/lang/Object;
.source "WakelockHandler.java"

# interfaces
.implements Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/WakelockHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final REQUEST_BLOCK:Ljava/lang/String; = "block"

.field private static final REQUEST_UNBLOCK:Ljava/lang/String; = "unblock"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/WakelockHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/gateway/WakelockHandler;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler$1;->this$0:Lcom/sonymobile/superstamina/gateway/WakelockHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 29
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v2, v0, v4

    const-string v3, "block"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 32
    .local v1, "uid":I
    const-string v2, "SuperStamina-WakelockHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "block uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler$1;->this$0:Lcom/sonymobile/superstamina/gateway/WakelockHandler;

    # getter for: Lcom/sonymobile/superstamina/gateway/WakelockHandler;->mPowerMgrSvc:Lcom/android/server/power/PowerManagerService;
    invoke-static {v2}, Lcom/sonymobile/superstamina/gateway/WakelockHandler;->access$000(Lcom/sonymobile/superstamina/gateway/WakelockHandler;)Lcom/android/server/power/PowerManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/power/PowerManagerService;->suspendWakelocks(I)V

    .line 38
    .end local v1    # "uid":I
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    aget-object v2, v0, v4

    const-string v3, "unblock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "SuperStamina-WakelockHandler"

    const-string v3, "unblock uids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler$1;->this$0:Lcom/sonymobile/superstamina/gateway/WakelockHandler;

    # getter for: Lcom/sonymobile/superstamina/gateway/WakelockHandler;->mPowerMgrSvc:Lcom/android/server/power/PowerManagerService;
    invoke-static {v2}, Lcom/sonymobile/superstamina/gateway/WakelockHandler;->access$000(Lcom/sonymobile/superstamina/gateway/WakelockHandler;)Lcom/android/server/power/PowerManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->resumeWakelocks()V

    goto :goto_0
.end method
