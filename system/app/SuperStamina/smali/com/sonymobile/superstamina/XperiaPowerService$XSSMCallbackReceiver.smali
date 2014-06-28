.class Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;
.super Ljava/lang/Object;
.source "XperiaPowerService.java"

# interfaces
.implements Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/XperiaPowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XSSMCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/XperiaPowerService;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Lcom/sonymobile/superstamina/XperiaPowerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/XperiaPowerService$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;-><init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XSSMCallbackReceiver;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$500(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/Xssm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/xssm/Xssm;->onDaemonConnected()V

    .line 394
    return-void
.end method
