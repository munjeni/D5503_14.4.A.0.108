.class Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$9;
.super Ljava/lang/Object;
.source "TwoPaneUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLookupChanged()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->access$000(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->access$000(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 510
    :cond_0
    return-void
.end method
