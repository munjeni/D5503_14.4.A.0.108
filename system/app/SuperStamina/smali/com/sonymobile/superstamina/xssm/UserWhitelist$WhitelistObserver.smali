.class Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;
.super Landroid/database/ContentObserver;
.source "UserWhitelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/UserWhitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WhitelistObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/UserWhitelist;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/UserWhitelist;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;->this$0:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    .line 136
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 141
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;->this$0:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    # getter for: Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->access$000(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 142
    .local v0, "oldWhitelist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;->this$0:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    # invokes: Lcom/sonymobile/superstamina/xssm/UserWhitelist;->readWhitelist()V
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->access$100(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;->this$0:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    # getter for: Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mListener:Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->access$200(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/UserWhitelist$WhitelistObserver;->this$0:Lcom/sonymobile/superstamina/xssm/UserWhitelist;

    # getter for: Lcom/sonymobile/superstamina/xssm/UserWhitelist;->mMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sonymobile/superstamina/xssm/UserWhitelist;->access$000(Lcom/sonymobile/superstamina/xssm/UserWhitelist;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;->onChanged(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 144
    return-void
.end method
