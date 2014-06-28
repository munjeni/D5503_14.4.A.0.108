.class Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;
.super Ljava/lang/Object;
.source "ClickFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/ClickFilter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/ClickFilter;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;->this$0:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ClickFilter$1;->this$0:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/util/ClickFilter;->isLocked:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->access$002(Lcom/sonyericsson/conversations/ui/util/ClickFilter;Z)Z

    .line 23
    return-void
.end method
