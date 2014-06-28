.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setButtonListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/Tuner;->nextStation()V

    .line 428
    return-void
.end method
