.class Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoSyncFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/AutoSyncFeature;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 29
    :cond_0
    return-void
.end method
