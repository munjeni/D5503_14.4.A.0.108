.class Lcom/android/settings/DataUsageSummary$4;
.super Ljava/lang/Thread;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$restrictBackground:Z


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    iput-boolean p2, p0, Lcom/android/settings/DataUsageSummary$4;->val$restrictBackground:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary$4;->val$restrictBackground:Z

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1008
    return-void
.end method
