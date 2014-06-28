.class Lcom/sonymobile/superstamina/xssm/Xssm$2;
.super Ljava/lang/Object;
.source "Xssm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;->debug([Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

.field final synthetic val$state:Lcom/sonymobile/superstamina/xssm/PowerState;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$2;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/Xssm$2;->val$state:Lcom/sonymobile/superstamina/xssm/PowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/Xssm$2;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$2;->val$state:Lcom/sonymobile/superstamina/xssm/PowerState;

    # invokes: Lcom/sonymobile/superstamina/xssm/Xssm;->setPowerStateLocked(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    invoke-static {v0, v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$1000(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/PowerState;)V

    .line 707
    return-void
.end method
