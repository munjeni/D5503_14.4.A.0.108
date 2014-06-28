.class Lcom/sonymobile/superstamina/xssm/WhitelistController$1;
.super Ljava/lang/Object;
.source "WhitelistController.java"

# interfaces
.implements Lcom/sonymobile/superstamina/xssm/WhitelistGraph$GraphListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$1;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    # invokes: Lcom/sonymobile/superstamina/xssm/WhitelistController;->logIddWhiteList()V
    invoke-static {v0}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$000(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V

    .line 90
    return-void
.end method
