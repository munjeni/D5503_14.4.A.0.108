.class Lcom/android/internal/policy/impl/GlobalActions$10$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$10;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$10;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$10;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$10$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$10$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$10;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1400(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 926
    return-void
.end method
