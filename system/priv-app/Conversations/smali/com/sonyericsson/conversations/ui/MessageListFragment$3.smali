.class Lcom/sonyericsson/conversations/ui/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLookupChanged()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 233
    return-void
.end method
