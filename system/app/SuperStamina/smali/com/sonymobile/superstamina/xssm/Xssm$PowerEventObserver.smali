.class Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;
.super Landroid/os/UEventObserver;
.source "Xssm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerEventObserver"
.end annotation


# static fields
.field private static final SSM_LATE_RESUME:I = 0x1

.field private static final SSM_PREPARE_SUSPEND:I = 0x0

.field private static final SSM_UEVENT_EVENT_VAR:Ljava/lang/String; = "EVENT"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/Xssm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/xssm/Xssm$1;

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;-><init>(Lcom/sonymobile/superstamina/xssm/Xssm;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "uevent"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 658
    :try_start_0
    const-string v1, "EVENT"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 677
    .end local v0    # "event":I
    :goto_0
    return-void

    .line 661
    .restart local v0    # "event":I
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$800(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 672
    .end local v0    # "event":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 664
    .restart local v0    # "event":I
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerEventObserver;->this$0:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$800(Lcom/sonymobile/superstamina/xssm/Xssm;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
