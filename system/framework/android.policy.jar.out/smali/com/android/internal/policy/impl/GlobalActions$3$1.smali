.class Lcom/android/internal/policy/impl/GlobalActions$3$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$3;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$3;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$3$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.intent.action.SCREEN_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    return-void
.end method
