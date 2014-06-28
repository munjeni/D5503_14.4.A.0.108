.class Lcom/sonyericsson/fmradio/service/PhfHandler$1;
.super Ljava/lang/Object;
.source "PhfHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/PhfHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/PhfHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/PhfHandler;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/PhfHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/PhfHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/PhfHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/PhfHandler;

    # invokes: Lcom/sonyericsson/fmradio/service/PhfHandler;->callMediaButtonListener()V
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/PhfHandler;->access$000(Lcom/sonyericsson/fmradio/service/PhfHandler;)V

    .line 194
    return-void
.end method
