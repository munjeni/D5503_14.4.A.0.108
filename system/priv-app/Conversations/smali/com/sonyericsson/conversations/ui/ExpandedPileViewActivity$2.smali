.class Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$2;
.super Ljava/lang/Object;
.source "ExpandedPileViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->onPileViewStateSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 199
    return-void
.end method
