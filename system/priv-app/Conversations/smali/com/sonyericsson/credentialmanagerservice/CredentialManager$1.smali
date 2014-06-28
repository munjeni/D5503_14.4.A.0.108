.class Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;
.super Ljava/lang/Object;
.source "CredentialManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/credentialmanagerservice/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    .line 97
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    invoke-static {p2}, Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    move-result-object v5

    iput-object v5, v4, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mCredMgrService:Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    .line 98
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    iget-object v4, v4, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mCredMgrService:Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    if-eqz v4, :cond_3

    .line 100
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 101
    .local v0, "credArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 103
    .local v3, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$000(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->isDevSigned(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "\u0001}\u0003V\u0094\u00b4&z;\u00b8\u00c7[%\u0095\u00a4\u00e7"

    .line 104
    .local v1, "credentialId":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    iget-object v4, v4, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mCredMgrService:Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    invoke-interface {v4, v1, v0}, Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;->getCredential(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 105
    if-nez v3, :cond_2

    .line 109
    new-instance v4, Ljava/lang/ref/SoftReference;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->sKey:Ljava/lang/ref/SoftReference;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$102(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 110
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;->onKeyObtained(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "credArray":[Ljava/lang/String;
    .end local v1    # "credentialId":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$000(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->serviceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$300(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    return-void

    .line 103
    .restart local v0    # "credArray":[Ljava/lang/String;
    .restart local v3    # "result":I
    :cond_1
    :try_start_1
    const-string v1, "\u009e[\u0001\u0011\u00e0@\u008b\u00b4\u0005\u00c8\u0019\u00ea\u0007\u0084\u00b6\u009d"

    goto :goto_0

    .line 117
    .restart local v1    # "credentialId":Ljava/lang/String;
    :cond_2
    const-string v4, "CredentialManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting credential, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;->onKeyObtained(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 122
    .end local v1    # "credentialId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "CredentialManager"

    const-string v5, "Error calling credential service."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;->onKeyObtained(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v0    # "credArray":[Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "result":I
    :cond_3
    const-string v4, "CredentialManager"

    const-string v5, "mCredMgrService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    # getter for: Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    invoke-static {v4}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;->onKeyObtained(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;->this$0:Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mCredMgrService:Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    .line 141
    return-void
.end method
