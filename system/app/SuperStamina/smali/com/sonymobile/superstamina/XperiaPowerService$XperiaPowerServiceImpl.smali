.class Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;
.super Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;
.source "XperiaPowerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/XperiaPowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XperiaPowerServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/XperiaPowerService;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {p0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;-><init>()V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    const-string v1, "com.sonymobile.permission.XSSM"

    const-string v2, "Access denied!"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method


# virtual methods
.method public addPackageToOperatorWhitelist(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 433
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$500(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/xssm/Xssm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/xssm/Xssm;->addPackageToOperatorWhitelist(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public areRemindersEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 445
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$100(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/analyzer/Analyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->areRemindersEnabled()Z

    move-result v0

    return v0
.end method

.method public debug(Ljava/lang/String;)I
    .locals 1
    .param p1, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 461
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/XperiaPowerService;->debug(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/superstamina/XperiaPowerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public enableReminders(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 439
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$100(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/analyzer/Analyzer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->enableReminders(Z)V

    .line 440
    return-void
.end method

.method public enableXssmHardwareRestriction(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 478
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$800(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->enableXssmHwRestriction(Z)V

    .line 479
    return-void
.end method

.method public isXssmHardwareRestrictionEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 472
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mHardwareRestrictionManager:Lcom/sonymobile/superstamina/HardwareRestrictionManager;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$800(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/HardwareRestrictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/HardwareRestrictionManager;->isXssmHwRestrictionEnabled()Z

    move-result v0

    return v0
.end method

.method public setReminderEnabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->checkPermission()V

    .line 451
    iget-object v0, p0, Lcom/sonymobile/superstamina/XperiaPowerService$XperiaPowerServiceImpl;->this$0:Lcom/sonymobile/superstamina/XperiaPowerService;

    # getter for: Lcom/sonymobile/superstamina/XperiaPowerService;->mAnalyzer:Lcom/sonymobile/superstamina/analyzer/Analyzer;
    invoke-static {v0}, Lcom/sonymobile/superstamina/XperiaPowerService;->access$100(Lcom/sonymobile/superstamina/XperiaPowerService;)Lcom/sonymobile/superstamina/analyzer/Analyzer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->setReminderEnabled(IZ)V

    .line 452
    return-void
.end method
