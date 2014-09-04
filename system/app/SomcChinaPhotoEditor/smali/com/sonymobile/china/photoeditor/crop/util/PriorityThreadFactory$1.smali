.class Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Runnable;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;->access$000(Lcom/sonymobile/china/photoeditor/crop/util/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 45
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 46
    return-void
.end method
