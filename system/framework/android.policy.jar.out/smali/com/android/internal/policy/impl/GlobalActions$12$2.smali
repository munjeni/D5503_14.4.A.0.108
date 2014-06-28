.class Lcom/android/internal/policy/impl/GlobalActions$12$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$12;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$12;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$12;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "rebootActions":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    aget-object v2, v0, p2

    iput-object v2, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    .line 49
    return-void
.end method
